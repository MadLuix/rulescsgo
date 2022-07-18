
#include <sourcemod>
#include <sdktools>


public Plugin myinfo = 
{
	name = "ChatWriter",
	author = "MadLuix",
	description = "Plugin to print things on chat",
	version = "1.0.0",
	url = "https://steamcommunity.com/id/SlenderBrX"
};

public OnPluginStart()
{
	RegConsoleCmd("sm_Example", Example, "Este comando é um exemplo");
	RegConsoleCmd("sm_vip", VipBenefits, "Comando mostra os beneficios do vip")
	RegConsoleCmd("sm_regras", RegrasSv, "Mostra as regras do servidor")
	RegConsoleCmd("sm_comandos", ComandosSv, "Mostra os comandos do servidor")
	RegConsoleCmd("sm_grupo", GrupoSv, "Mostra olink do grupo")
	RegConsoleCmd("sm_site", SiteSv, "Mostra o site")
	RegConsoleCmd("sm_discord", DiscordSv, "Mostra o discord")
}

public Action:Example(client, args)
{
	if(IsClientInGame(client))
	{
		PrintToChat(client, "MadLuix")

	}

}
public Action:VipBenefits(client, args)
{
	ServerCommand("say ========= Beneficios do Vip =========");
	ServerCommand("say >Auto BunnyHop");
	ServerCommand("say >Vagas Reservadas");
	ServerCommand("say >Ganha Vida ao matar");
	ServerCommand("say >Acesso a Luvas (!glove)");
	ServerCommand("say >Acesso a Ranks (!mm)");
	ServerCommand("say >Acesso a Chapéus (!hats)");
	ServerCommand("say >Acesso a Medalhas (!coin)");
	ServerCommand("say =======================================");
	

}
public Action:RegrasSv(client, args)
{
	ServerCommand("say ========= Regras do Servidor =========");
	ServerCommand("say >Não Xingar, Ser Toxico Ou Racista");
	ServerCommand("say >Não Abusar do Bhop (VIPS) ");
	ServerCommand("say >Não Praticar Bullying");
	ServerCommand("say >Não Atirar Correndo");
	ServerCommand("say >Não Xitar");
	ServerCommand("say >Ser Amigo Da Sociedade");
	ServerCommand("say >Entrar no Grupo da Steam : steamcommunity.com/groups/blackbeeserver");
	ServerCommand("say >Entrar no Discord (Opcional) : discord.gg/Gyez3rS");
	ServerCommand("say =======================================");
	
}
public Action:ComandosSv(client, args)
{
	ServerCommand("say ========= Comandos do Servidor =========");
	ServerCommand("say >!knife Permite escolher sua faca");
	ServerCommand("say >!ws Permite alterar a skin de sua arma");
	ServerCommand("say >!rank Mostra seu rank e kdr no servidor");
	ServerCommand("say >!top Mostra os top10 jogadores do servidor");
	ServerCommand("say >!regras Mostra as regras do servidor");
	ServerCommand("say >!comandos Mostra os comandos do servidor");
	ServerCommand("say =======================================");
	
}
public Action:GrupoSv(client, args)
{
	ServerCommand("say ========= Grupo do Servidor =========");
	ServerCommand("say >Grupo da Steam : steamcommunity.com/groups/blackbeeserver");
	ServerCommand("say =======================================");
	
}
public Action:SiteSv(client, args)
{
	ServerCommand("say ========= Grupo do Servidor =========");
	ServerCommand("say >Site do servidor : sites.google.com/view/blackbee/home");
	ServerCommand("say =======================================");
}
public Action:DiscordSv(client, args)
{
	ServerCommand("say ========= Grupo do Servidor =========");
	ServerCommand("say >Discord do servidor : discord.gg/Gyez3rS");
	ServerCommand("say =======================================");
}