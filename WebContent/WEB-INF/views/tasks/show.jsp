<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <c:choose>
            <c:when test="${task != null}">
                <h2>タスクの詳細ページ</h2>
                <table>
                    <tbody>
                        <tr>
                            <th>タスク：</th>
                            <td><c:out value="${task.content}" /></td>
                        </tr>
                        <tr>
                            <th>作成日時：</th>
                            <td><fmt:formatDate value="${task.created_at}"
                                    pattern="yyyy-MM-dd HH:mm" /></td>
                        </tr>
                        <tr>
                            <th>更新日時：</th>
                            <c:choose>
                                <c:when test="${task.created_at != task.updated_at}">
                                    <td><fmt:formatDate value="${task.created_at}" pattern="yyyy-MM-dd HH:mm" /></td>
                                </c:when>
                            </c:choose>
                        </tr>
                    </tbody>
                </table>
                <p>
                    <a href="${pageContext.request.contextPath}/index">一覧に戻る</a>
                </p>
                <p>
                    <a href="${pageContext.request.contextPath}/edit?id=${task.id}">このメッセージを編集する</a>
                </p>
            </c:when>
        </c:choose>
    </c:param>
</c:import>