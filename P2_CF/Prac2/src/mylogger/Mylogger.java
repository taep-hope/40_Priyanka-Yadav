/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mylogger;
import java.io.*;
import java.util.logging.*;

public class Mylogger {

    public static void main(String[] args){
       Logger l = Logger.getLogger(Mylogger.class.getName());
       FileHandler fh;
       try
       {
           fh = new FileHandler("D:/mylogfile.log",true);
           l.addHandler(fh);
           l.setLevel(Level.ALL);
           SimpleFormatter sf= new SimpleFormatter();
           fh.setFormatter(sf);
           l.info("My First Log");
           
       }
        catch(SecurityException e)
        {
            e.printStackTrace();
        }
       catch(IOException e)
       {
           e.printStackTrace();
       }
       l.info("How are you?");
    }
    
}
