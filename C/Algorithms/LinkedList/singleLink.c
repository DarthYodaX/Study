/* Made by Josh Beatty */

#include <stdio.h>
#include <stdlib.h>

/************************ LINKED LIST *************************/

/* Structure that represents a single node of a linked list */
struct node { // struct > typedef if struct has member that points to similar struct
  int value; // could be any data type but we're going with int
  struct node *next; // pointer to the next node
};

/* Usefull Functions */
struct node *add_to_list(struct node *list, int n) {
  struct node *new_node; // temporary pointer to soon to be allocated space for struct
  
   /*

    ********
    new_node --> NULLPTR
    ********

   */
  
  new_node = malloc(sizeof(struct node)); // allocate memory for the node, now new_node points to a node struct sized block of memory
  
   /*

    ********
    new_node 
    ********
       |   
       |      ************  
       |-->   *          * <-- int value (4 bytes)
              ************
	      *          * <-- next (8 bytes)
	      ************
   */
  
  if (new_node == NULL) {
    printf("Error: malloc failed in add_to_list\n");
    exit(EXIT_FAILURE);
  }
  new_node -> value = n; // store the data of the list
  new_node -> next = list; // pointing new_node to the node that used to be infront
  return new_node; // this is just a POINTER to the new node
};


struct node *read_numbers(void) { // read in numbers to be stored in a linked list always adding to beginning of list
  struct node *first = NULL; // initially, the list is empty, first point to NULL
  int n; // this is where user input will be stored

  printf("Enter a series of integers (0 to terminate): "); // prompt
  for (;;) {
    scanf("%d", &n); // scan in integers from user
    if (n == 0) { // if n = 0, return 'first'
      return first;
    }
    first = add_to_list(first, n); //first = pointer to new_node
  }
};


struct node *search_list(struct node *list, int n) { // search any linked list passed through it for n
  struct node *p; // variable for a struct node ptr
  for (p = list; p != NULL; p = p -> next) { // ptr to first pointer in list, goes to each pointer until ptr is NULL
    if (p -> value == n) { // at each node we travers with p, we check the value stored at that node for n
      return p; // if we find it, return the ptr to it
    } else {
      return NULL; // we didn't find it
    }
  }
};


struct node *delete_from_list(struct node *list, int n) {
  struct node *cur, *prev; //ptrs to the current node and the one before
  // Travers through the list searching for n, when found, save ptrs to be compared
  for (cur = list, prev = NULL; cur != NULL && cur -> value != n; prev = cur, cur = cur -> next); 
  if (cur == NULL) // if n was not found, return unaltered list
    return list;
  if (prev == NULL) // if n was found at the very first node, bypass the first node
    list = list -> next;
  else
    prev -> next = cur -> next; // if n is found anywhere else in list, set the prev ptr node to the cur->next ptr node, bypassing n
  free(cur); // deallocate space for that node that n was found in
  return list; // return the new list after the deletion
};

struct node *output_from_list(struct node *list) {
  struct node *node_ptr; // ptr to the first node in a list
  for(node_ptr = list; node_ptr != NULL; node_ptr = node_ptr -> next) {
    printf("%d\n", node_ptr -> value); // print each value of the list
    printf("%p\n", node_ptr -> next); // print each ptr out
  }
};
 
int main(int argc, char **argv) {
  
  struct node *listA = read_numbers();
  output_from_list(listA);
  
  return 0;
  
}
