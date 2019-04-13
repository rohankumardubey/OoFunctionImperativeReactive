package net.officefloor.demo;

import net.officefloor.demo.entity.WeavedRequest;
import net.officefloor.plugin.section.clazz.Parameter;
import net.officefloor.plugin.variable.Val;
import net.officefloor.web.ObjectResponse;

public class Send {

	public void send(@Parameter double standardDeviation, @Val WeavedRequest request,
			@EventLoopResponse @Val ServicedThreadResponse[] eventLoopResponse,
			@ThreadPerRequestResponse @Val ServicedThreadResponse[] threadPerRequestResponse,
			ObjectResponse<WeavedResponse> response) {
		response.send(new WeavedResponse(request.getRequestIdentifier(), request.getId(), eventLoopResponse,
				threadPerRequestResponse, standardDeviation));
	}
}