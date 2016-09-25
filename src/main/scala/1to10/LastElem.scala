import scala.collection.immutable.Nil

/**
  * Find the last element of a list
  */
object LastElem {

  def return_last[A](list: List[A], x:A): A = list match {

    case x :: xs => {

      return_last(xs,x)
    }

    case _ => x
  }



  def main(args: Array[String]): Unit = {

    val list: List[Char] = List('a', 'b', 'c', 'd')

    val last = return_last(list,Nil)

    //println(last)
    //or
    println(list.reverse.head)

  }
}
