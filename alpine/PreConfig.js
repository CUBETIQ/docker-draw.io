/**
 * Copyright (c) 2020, CUBETIQ Solution
 * Copyright (c) 2006-2019, JGraph Ltd
 * Copyright (c) 2006-2019, draw.io AG
 */
// Overrides of global vars need to be pre-loaded
// This points to ExportProxyServlet which uses the local export server at port 8000.
// This proxy configuration allows https requests to the export server via Tomcat.
window.EXPORT_URL = "/export";

window.PLANT_URL = null;

window.DRAW_MATH_URL = "math";

// Replace with your custom draw.io configurations. For more details,
// https://desk.draw.io/support/solutions/articles/16000058316
window.DRAWIO_CONFIG = null;