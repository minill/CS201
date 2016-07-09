// True iff all elements of <s> are in sorted order.
predicate sortedSeq(s: seq<int>)
{
  forall j, k :: 0 <= j < k < |s| ==> s[j] <= s[k]
}

// True iff all elements of <a> are in sorted order.
predicate sorted(a: array<int>)
  reads a
  requires a != null
{
  sortedSeq(a[..])
}

lemma SortedExamples()
{
  assert sortedSeq([1, 2, 3]);
  // assert !sortedSeq([1, 3, 2]);
  assert !false;
}

// True iff all elements of <s> are less than or equal to all elements of <t>.
predicate lessThanOrEqualToSeq(s: seq<int>, t: seq<int>)
{
  forall j, k :: 0 <= j < |s| && 0 <= k < |t| ==> s[j] <= t[k]
}

predicate permutationOf<T>(a: array<T>, b: array<T>)
  reads a, b
  requires a != null && b != null
{
  multiset(a[..]) == multiset(b[..])
}

method PrintSeq<T>(s: seq<T>)
{
  print "[ ";
  var i := 0;
  while i < |s|
  {
    print s[i], " ";
    i := i + 1;
  }
  print "]\n";
}

method PrintArray<T>(a: array<T>)
  requires a != null
{
  PrintSeq(a[..]);
}

// 1. (5 points) Implement swap.
method Swap<T>(a: array<T>, j: int, k: int)
  modifies a
  requires a != null
  requires 0 <= j < a.Length
  requires 0 <= k < a.Length
  ensures a[j] == old(a[k])
  ensures a[k] == old(a[j])
  ensures forall m :: 0 <= m < a.Length && m != j && m != k ==> a[m] == old(a[m])
{
  // BEGIN SOLUTION
  a[j], a[k] := a[k], a[j];
  // END SOLUTION
}

// 1. (10 points) Implement bubble sort.
method BubbleSort(a: array<int>)
  modifies a
  requires a != null
  ensures sorted(a)
  ensures permutationOf(a, old(a))
{
  if a.Length == 0
  {
    return;
  }

  var i := a.Length - 1;
  while i > 0
    invariant 0 <= i
    invariant sortedSeq(a[i..])
    invariant lessThanOrEqualToSeq(a[..i+1], a[i+1..])
  {
    var j := 0;
    while j < i
      invariant j <= i
      invariant sortedSeq(a[i..])
      invariant lessThanOrEqualToSeq(a[..i+1], a[i+1..])
      invariant forall m :: 0 <= m < j ==> a[m] <= a[j]
    {
      if a[j] > a[j+1]
      {
        Swap(a, j, j+1);
      }

      j := j + 1;
    }

    i := i - 1;
  }
}

// 2. (5 points) Why is the following specification insufficient for a sorting
// algorithm? Write the worst "sorting" algorithm you can that satisfies the
// specification.
method CrappySort(a: array<int>)
  modifies a
  requires a != null
  ensures sorted(a)
  // REMOVED: ensures permutationOf(a, old(a))
{
  // BEGIN SOLUTION
  var i := 0;
  while i < a.Length
    invariant i <= a.Length
    invariant forall j :: 0 <= j < i ==> a[j] == j
  {
    a[i] := i;
    i := i + 1;
  }
  // END SOLUTION
}

method Main()
{
  // PrintSeq([1,2,3]);
  // print "WTF", s;
  // print "WTF", sortedSeq(s);
}
