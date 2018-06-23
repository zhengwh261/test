package com.sf.minesweeper.test;

import com.sf.minesweeper.bean.MineLabel;
import com.sf.minesweeper.bean.Own;
import com.sf.minesweeper.dialog.About;
import com.sf.minesweeper.dialog.ShowWin;
import com.sf.minesweeper.dialog.Win;
import com.sf.minesweeper.frame.SartFrame;
import com.sf.minesweeper.listener.MineMenuListener;
import com.sf.minesweeper.listener.MouseListener;
import com.sf.minesweeper.listener.MouseMotionListener;
import com.sf.minesweeper.panel.MineField;
import com.sf.minesweeper.panel.MineState;
import com.sf.minesweeper.timer.Timers;
import com.sf.minesweeper.tools.Tools;
import org.junit.Test;

/**
 * Created by 郑文华 on 2018/6/21.
 * 测试类的描写
 */
public class Test01 {
    SartFrame startFrame = new  SartFrame();
    @Test
   public void testMineLabel(){
        MineLabel mineLabel = new MineLabel(3,3);
        System.out.println(mineLabel);

   }
   @Test
    public void testOwn(){
       Own own = new Own(90,"zheng","高级");
       System.out.println(own);
   }
   @Test
    public void testAbout(){
       About about = new About(startFrame);
       System.out.println(about.getDefaultCloseOperation());
   }
   @Test
    public void testShowWin(){
       ShowWin showWin = new ShowWin(startFrame);
       System.out.println(showWin.getName());
   }
  @Test
    public void testWin(){
      Win win = new Win(startFrame);
      System.out.println(win.getText());
  }
  @Test
    public void testStartFrame(){
        System.out.println(startFrame.isStart());
  }
  @Test
    public void MineMenu(){
      MineMenuListener menuListener = new MineMenuListener(startFrame);
      System.out.println(menuListener.toString());
  }
  @Test
    public void testMouseListener(){
      MouseListener mouseListener = new MouseListener(startFrame);
      mouseListener.isMind();
  }
  @Test
    public void testMouseMotionLister(){
      MouseMotionListener motionListener = new MouseMotionListener();
      System.out.println(motionListener.toString());
  }
  @Test
    public void testMineField(){
      MineField mineField = new MineField(startFrame);
      System.out.println(mineField.contains(8,8));
  }
  @Test
    public void testMineState(){
      MineState mineState = new MineState(startFrame);
      System.out.println(mineState.getAlignmentX());
  }
  @Test
    public void testTimers(){
      MineState mineState = new MineState(startFrame);
      Timers timers = new Timers(mineState);
     System.out.print(timers.toString());
  }
  @Test
    public void testTools(){
      Tools tools = new Tools();
     System.out.println( tools.toString());
  }
}
