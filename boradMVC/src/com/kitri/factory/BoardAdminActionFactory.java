package com.kitri.factory;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kitri.action.Action;
import com.kitri.action.admin.board.BoardMenuAction;
import com.kitri.action.admin.board.MakeBoardAction;
import com.kitri.action.admin.board.MakeCategoryAction;

public class BoardAdminActionFactory {

	private static Action boardMenuAction;
	private static Action makeCategoryAction;
	private static Action makeBoardAction;
	
	static {
		boardMenuAction = BoardMenuAction.getBoardMenuAction();
		makeCategoryAction = MakeCategoryAction.getMakeCategoryAction();
		makeBoardAction = MakeBoardAction.getMakeBoardAction();
	}

	public static Action getBoardMenuAction() {
		return boardMenuAction;
	}

	public static Action getMakeCategoryAction() {
		return makeCategoryAction;
	}

	public static Action getMakeBoardAction() {
		return makeBoardAction;
	}
	
}
