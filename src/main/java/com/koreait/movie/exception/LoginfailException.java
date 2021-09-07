package com.koreait.movie.exception;

public class LoginfailException extends RuntimeException{
   
   public LoginfailException(String msg) {
      super(msg);
   }
   public LoginfailException(Throwable e) {
      super(e);
   }
   
   public LoginfailException(String msg,Throwable e) {
      super(msg,e);
   }
   
}