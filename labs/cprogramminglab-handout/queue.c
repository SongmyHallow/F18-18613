/* 
 * Code for basic C skills diagnostic.
 * Developed for courses 15-213/18-213/15-513 by R. E. Bryant, 2017
 * Modified to store strings, 2018
 */

/*
 * This program implements a queue supporting both FIFO and LIFO
 * operations.
 *
 * It uses a singly-linked list to represent the set of queue elements
 */

#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include "harness.h"
#include "queue.h"

/*
  Create empty queue.
  Return NULL if could not allocate space.
*/
queue_t *q_new()
{
    queue_t *q =  malloc(sizeof(queue_t));
    /* What if malloc returned NULL? */
    if(NULL == q){
      return NULL;
    }
    q->head = NULL;
    q->ele_counter = 0;
    return q;
}

/* Free all storage used by queue */
void q_free(queue_t *q)
{
    /* How about freeing the list elements and the strings? */
    while(q->head != NULL){
      list_ele_t *temp = q->head;
      q->head = temp->next;
      free(temp->value);
      free(temp);
    }
    /* Free queue structure */
    free(q);
}

/*
  Attempt to insert element at head of queue.
  Return true if successful.
  Return false if q is NULL or could not allocate space.
  Argument s points to the string to be stored.
  The function must explicitly allocate space and copy the string into it.
 */
bool q_insert_head(queue_t *q, char *s)
{
    list_ele_t *newh;
    /* What should you do if the q is NULL? */
    newh = malloc(sizeof(list_ele_t));
    newh->next = NULL;
    /* Don't forget to allocate space for the string and copy it */
    newh->value = malloc(sizeof(newh->value));
    strcpy(newh->value, s);
    /* What if either call to malloc returns NULL? */
    if(NULL == newh || NULL == newh->value){
      return false;
    }
    
    newh->next = q->head;
    q->head = newh;
    q->ele_counter++;

    return true;
}


/*
  Attempt to insert element at tail of queue.
  Return true if successful.
  Return false if q is NULL or could not allocate space.
  Argument s points to the string to be stored.
  The function must explicitly allocate space and copy the string into it.
 */
bool q_insert_tail(queue_t *q, char *s)
{
    /* You need to write the complete code for this function */
    list_ele_t *newt;
    newt = malloc(sizeof(list_ele_t));
    newt->next = NULL;
    newt->value = malloc(sizeof(newt->value));
    strcpy(newt->value, s);
    if(NULL == newt || NULL == newt->value){
      return false;
    }
    list_ele_t *temp = q->head;
    while(temp->next){
      temp = temp->next;
    }
    temp->next = newt;
    q->ele_counter++;
    /* Remember: It should operate in O(1) time */
    return true;
}

/*
  Attempt to remove element from head of queue.
  Return true if successful.
  Return false if queue is NULL or empty.
  If sp is non-NULL and an element is removed, copy the removed string to *sp
  (up to a maximum of bufsize-1 characters, plus a null terminator.)
  The space used by the list element and the string should be freed.
*/
bool q_remove_head(queue_t *q, char *sp, size_t bufsize)
{
    /* You need to fix up this code. */
    if(NULL == q || q->ele_counter == 0){
      return false;
    }
    list_ele_t *temp = q->head;
    q->head = temp->next;
    if(NULL != sp){
      strncpy(sp,temp->value,bufsize-1);
    }
    free(temp->value);
    free(temp);
    return true;
}

/*
  Return number of elements in queue.
  Return 0 if q is NULL or empty
 */
int q_size(queue_t *q)
{
    /* You need to write the code for this function */
    if(NULL == q || 0 == q->ele_counter){
      return 0;
    }
    /* Remember: It should operate in O(1) time */
    return q->ele_counter;
}

/*
  Reverse elements in queue
  No effect if q is NULL or empty
  This function should not allocate or free any list elements
  (e.g., by calling q_insert_head, q_insert_tail, or q_remove_head).
  It should rearrange the existing ones.
 */
void q_reverse(queue_t *q)
{
    /* You need to write the code for this function */
    if(NULL == q){
      return;
    }
    list_ele_t *pre = NULL;
    list_ele_t *p = q->head;
    list_ele_t *h = NULL;
    while(p){
      h = p;
      list_ele_t *temp = p->next;
      p->next = pre;
      pre = p;
      p = temp;
    }
    q->head = h;
    return;
}  