package interceptor;

import java.io.IOException;

import model.Aluno;
import model.Professor;
import model.Tutor;
import model.Usuario;

import org.vraptor.Interceptor;
import org.vraptor.LogicException;
import org.vraptor.LogicFlow;
import org.vraptor.annotations.In;
import org.vraptor.scope.ScopeType;
import org.vraptor.view.ViewException;

public class AutorizadorAdministradorInterceptor implements Interceptor {

	@In(scope = ScopeType.SESSION, required=false)
	protected Usuario usuario;
	
	@Override
	public void intercept(LogicFlow flow) throws LogicException, ViewException {
		boolean fail = false;

		if (this.usuario == null) {
			fail = true;
		} else {
			if (this.isClasse()) {
				flow.execute();
			} else {
				fail = true;
			}
		}
		if (fail) {
			try {
				flow.getLogicRequest().getResponse().sendRedirect("index.jsp?expirou=true");
			} catch (IOException e) {
				throw new LogicException(e);
			}
		}

	}

	private boolean isClasse() {
		if(this.usuario instanceof Aluno) return false;
		else if(this.usuario instanceof Tutor) return false;
		else if(this.usuario instanceof Professor) return false;
		else if(this.usuario instanceof Usuario) return true;
		else return false;
	}

}
