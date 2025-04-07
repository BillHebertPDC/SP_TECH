let dados_grafico = {
    type: 'line', // Tipo de gráfico (linha)
    data: {
        labels: ['Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio'],
        datasets: [{
            label: 'Vendas',
            data: [10, 20, 30, 40, 50],
            borderColor: 'rgba(75, 192, 192, 1)',
            backgroundColor: 'rgba(75, 192, 192, 0.2)',
            fill: true
        }]
    },
    options: {
        responsive: true,  // Faz o gráfico ser responsivo
        maintainAspectRatio: false, // Permite que o gráfico ocupe toda a área da div, sem manter a proporção fixa
        scales: {
            y: {
                beginAtZero: true
            }
        }
    }
}

let dados_grafico2 = {
    type: 'line', // Tipo de gráfico (linha)
    data: {
        labels: ['Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio'],
        datasets: [{
            label: 'Vendas',
            data: [10, 20],
            borderColor: 'rgba(75, 192, 192, 1)',
            backgroundColor: 'rgba(75, 192, 192, 0.2)',
            fill: true
        }]
    },
    options: {
        responsive: true,  // Faz o gráfico ser responsivo
        maintainAspectRatio: false, // Permite que o gráfico ocupe toda a área da div, sem manter a proporção fixa
        scales: {
            y: {
                beginAtZero: true
            }
        }
    }
}

async function carregarHTML(id, arquivo, par = {}) {
    const response = await fetch(document.URL + arquivo);
    let html = await response.text();
    for (let item in par) {
        const regex = new RegExp(`${item}`, 'gi');
        console.log(regex)
        html = html.replace(regex, par[item]);
    }
    console.log(html);
    const container = document.getElementById(id);
    container.innerHTML = html;
    executarScripts(container);
}
function executarScripts(container) {
    const scripts = container.querySelectorAll('script');
    scripts.forEach(script => {
        const scriptElement = document.createElement('script');
        scriptElement.text = script.textContent;
        document.body.appendChild(scriptElement);
        document.body.removeChild(scriptElement);
    });
}
window.onload = () => {
    carregarHTML('conteudo', 'layout/dashboard.html')
    carregarHTML('nav', 'layout/nav.html');
    carregarHTML('list_sensor', 'componentes/list_sensor.html');
    carregarHTML('graph_sensor', 'componentes/graph_sensor.html', {
        ["class-principal"]: "sensor-graph",
        ["class-conteiner-grafico"]: "grafico-container",
        ["class-grafico"]: "grafico-wrapper",
        ["id-grafico"]: "grafico_grupo_sensor",
        titulo: "Grafico Grupo Sensor",
        texto1: "temperatura",
        texto2: "umidade",
        texto3: "media",
        ["dados_grafico"]: JSON.stringify(dados_grafico)
    });
    carregarHTML('list_alerta', 'componentes/alerts.html');
    carregarHTML('graph_sensor_individual', 'componentes/graph_sensor.html', {
        ["class-principal"]: "sensor-graph",
        ["class-conteiner-grafico"]: "grafico-container",
        ["class-grafico"]: "grafico-wrapper",
        ["id-grafico"]: "grafico_grupo_sensor2",
        titulo: "Grafico Grupo Sensor",
        texto1: "temperatura",
        texto2: "umidade",
        texto3: "media",
        ["dados_grafico"]: JSON.stringify(dados_grafico2)
    });

};


//for(;true;){}


























let dados = {
    montar_grafico: (tipo, labels, dados, opcoes) => {
        return {
            type: tipo,
            data: {
                labels: labels,
                datasets: dados
            },
            options: opcoes
        }
    },
    opcoes_padrão: {
        responsive: true,
        maintainAspectRatio: false,
        scales: {
            y: {
                beginAtZero: true
            }
        }
    },
    grupos_sensores: {
        temperatura: {
            label: ['Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio'],
            dados: [{
                label: 'Umidade',
                data: [35, 33, 30, 35, 40],
                borderColor: 'rgba(75, 192, 192, 1)',
                backgroundColor: 'rgba(75, 192, 192, 0.2)',
                fill: true
            },
            {
                label: 'Temperatura',
                data: [25, 26, 30, 28, 20],
                borderColor: 'rgba(255, 192, 192, 1)',
                backgroundColor: 'rgba(255, 192, 192, 0.2)',
                fill: true
            }]
        },
        tempo_real: {
            label: ['40s', '35s', '30s', '25s', '20s', '15s', '10s', '5s'],
            dados: [{
                label: 'Temperatura',
                data: [31, 31, 31, 31, 30.5, 30, 30, 30],
                borderColor: 'rgba(75, 192, 192, 1)',
                backgroundColor: 'rgba(75, 192, 192, 0.2)',
                fill: true
            }, {
                label: 'umidade',
                data: [28, 28, 28, 29, 30, 31, 31, 30.5],
                borderColor: 'rgba(255, 192, 192, 1)',
                backgroundColor: 'rgba(255, 192, 192, 0.2)',
                fill: true
            }]
        },
        analise: {
            label: ["Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"],
            dados: [{
                label: '2024',
                data: ['120', '110', '100', '90', '80', '70', '60', '50', "40", "30", "20", "10"],
                borderColor: 'rgba(75, 192, 192, 1)',
                backgroundColor: 'rgba(75, 192, 192, 0.2)',
                fill: true
            }]
        }
    }
}

















window.onload = () => {
    carregarHTML('conteudo', 'layout/dashboard.html')
    carregarHTML('nav', 'layout/nav.html');
    carregarHTML('list_sensor', 'componentes/list_sensor.html');
    carregarHTML('graph_sensor', 'componentes/graph_sensor.html', {
        ["class-principal"]: "sensor-graph",
        ["class-conteiner-grafico"]: "grafico-container",
        ["class-grafico"]: "grafico-wrapper",
        ["id-grafico"]: "grafico_grupo_sensor",
        titulo: "Media Grupo Sensor (Mês)",
        texto1: "temperatura",
        texto2: "umidade",
        texto3: "media",
        ["dados_grafico"]: JSON.stringify(dados.montar_grafico("line", dados.grupos_sensores.temperatura.label, dados.grupos_sensores.temperatura.dados, dados.opcoes_padrão))
    });
    carregarHTML('list_alerta', 'componentes/alerts.html');
    carregarHTML('graph_sensor_individual', 'componentes/graph_sensor.html', {
        ["class-principal"]: "sensor-graph",
        ["class-conteiner-grafico"]: "grafico-container",
        ["class-grafico"]: "grafico-wrapper",
        ["id-grafico"]: "grafico_grupo_sensor2",
        titulo: "Sensores (Tempo Real)",
        texto1: "temperatura",
        texto2: "umidade",
        texto3: "media",
        ["dados_grafico"]: JSON.stringify(dados.montar_grafico("line", dados.grupos_sensores.tempo_real.label, dados.grupos_sensores.tempo_real.dados, dados.opcoes_padrão))
    });
    carregarHTML("graph_incidentes_mes", 'componentes/graph_sensor.html', {
        ["class-principal"]: "sensor-graph",
        ["class-conteiner-grafico"]: "grafico-container",
        ["class-grafico"]: "grafico-wrapper",
        ["id-grafico"]: "grafico_analise",
        titulo: "Analise de eventos anual",
        texto1: "Quantidade de Queimadas",
        texto2: "",
        texto3: "",
        ["dados_grafico"]: JSON.stringify(dados.montar_grafico("line", dados.grupos_sensores.analise.label, dados.grupos_sensores.analise.dados, dados.opcoes_padrão))
    })

};