using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TP3.Negocio
{
    public class Util
    {
        public static bool mandarNotificacionMedico(string emails, string paciente, string gravedad, string medico, 
            string estado, string historia,string medicinaTraslado,string numSolicitud,string tipoQuipoMedico,
            string tipoTraslado,DateTime? fechaAprobacion,string observacion)
        {
            bool enviado = false;
            System.Net.Mail.MailMessage msj = new System.Net.Mail.MailMessage();
            msj.To.Add(emails);

            //Asunto
            if (estado == "APR")
            {
                msj.Subject = "Aprobación de Paciente UCI";
            }
            else
            {
                msj.Subject = "Desaprobación de Paciente UCI";
            }

            msj.SubjectEncoding = System.Text.Encoding.UTF8;

            msj.Body = "<br /> <p style='color:black'>La solicitud de ingreso a UCI del paciente: " + paciente + " ha sido Aprobada.</p> <br />" +
             "N° Solicitud: <b> " + numSolicitud + " </b><br />" +
             "Fecha y hora de Solicitud :  <b>" + fechaAprobacion + " </b><br />" +
             "Paciente: <b> " + paciente + " </b><br />" +
             "Observaciones: <b> " + observacion + " </b><br />" +
             "Gravedad: <b> " + gravedad + " </b><br />" +
             "Medico Solicitante: <b> " + medico + " </b><br />"+
             "Historia Clínica: <b> " + historia + " </b><br />" +
             "<br />" +
            "Tipo de traslado: <b> " + tipoTraslado + " </b><br />" +
            "Equipo médico: <b> " + tipoQuipoMedico + " </b><br />" +
            "Medicina de traslado: <b> " + medicinaTraslado + " </b><br />";
            
           
            
            msj.BodyEncoding = System.Text.Encoding.UTF8;
            msj.IsBodyHtml = true;
            msj.From = new System.Net.Mail.MailAddress("modulouci@gmail.com");
            //cliente de correo:
            System.Net.Mail.SmtpClient cliente = new System.Net.Mail.SmtpClient();
            cliente.Credentials =
            new System.Net.NetworkCredential("modulouci@gmail.com", "zeballos");
            cliente.Port = 587;
            cliente.EnableSsl = true;
            cliente.Host = "smtp.gmail.com";
            try
            {
                cliente.Send(msj);
                enviado = true;
            }
            catch (System.Net.Mail.SmtpException)
            {
                enviado = false;
            }

            return enviado;
        }

        public static bool mandarNotificacionPariente(string email , string estado,string medico,string recepcionista, DateTime? fechaAprobacion)
        {
            bool enviado = false;
            System.Net.Mail.MailMessage msj = new System.Net.Mail.MailMessage();
            msj.To.Add(email);

            //Asunto
            if (estado == "APR")
            {
                msj.Subject = "Aprobación de Ingreso a UCI";
            }
            else
            {
                msj.Subject = "Desaprobación de Paciente UCI";
            }

            msj.SubjectEncoding = System.Text.Encoding.UTF8;

            msj.Body = "<br /> <h2 style='color:#04B404'>Notificación automática - Sistema Integrado Clinica Ricardo Palma</h2> <br />" +
            "Aprobación de ingreso a UCI : <b style='color:blue'>" + (estado == "APR" ? "AProbado" : "Desaprobado") + " </b> <br />" +
            "Médico Solicitante: <b> " + medico + " </b><br />" +
            "Médico aprobador: <b> " + recepcionista + " </b><br />" +
            "Fecha y hora :  <b>" + fechaAprobacion + " </b>";
            msj.BodyEncoding = System.Text.Encoding.UTF8;
            msj.IsBodyHtml = true;
            msj.From = new System.Net.Mail.MailAddress("modulouci@gmail.com");
            //cliente de correo:
            System.Net.Mail.SmtpClient cliente = new System.Net.Mail.SmtpClient();
            cliente.Credentials =
            new System.Net.NetworkCredential("modulouci@gmail.com", "zeballos");
            cliente.Port = 587;
            cliente.EnableSsl = true;
            cliente.Host = "smtp.gmail.com";
            try
            {
                cliente.Send(msj);
                enviado = true;
            }
            catch (System.Net.Mail.SmtpException)
            {
                enviado = false;
            }

            return enviado;
        }

        public static bool mandarNotificacionRecepcionistaAdmin(string email, string estado, string medico, string recepcionista, DateTime? fechaAprobacion,string paciente)
        {
            bool enviado = false;
            System.Net.Mail.MailMessage msj = new System.Net.Mail.MailMessage();
            msj.To.Add(email);

            //Asunto
            if (estado == "APR")
            {
                msj.Subject = "Aprobación de Ingreso a UCI";
            }
            else
            {
                msj.Subject = "Desaprobación de Paciente UCI";
            }

            msj.SubjectEncoding = System.Text.Encoding.UTF8;

            msj.Body = "<br /> <h2 style='color:#04B404'>Notificación automática - Sistema Integrado Clinica Ricardo Palma</h2> <br />" +
            "Aprobación de paciente  a UCI : <b style='color:blue'>" + (estado == "APR" ? "AProbado" : "Desaprobado") + " </b> <br />" +
            "No se pudo notificar al pariente del paciente: <b> " + paciente +"</ b >< br />" +
            "Médico Solicitante: <b> " + medico + " </b><br />" +
            "Médico aprobador: <b> " + recepcionista + " </b><br />" +
            "Fecha y hora :  <b>" + fechaAprobacion + " </b>";
            msj.BodyEncoding = System.Text.Encoding.UTF8;
            msj.IsBodyHtml = true;
            msj.From = new System.Net.Mail.MailAddress("modulouci@gmail.com");
            //cliente de correo:
            System.Net.Mail.SmtpClient cliente = new System.Net.Mail.SmtpClient();
            cliente.Credentials =
            new System.Net.NetworkCredential("modulouci@gmail.com", "zeballos");
            cliente.Port = 587;
            cliente.EnableSsl = true;
            cliente.Host = "smtp.gmail.com";
            try
            {
                cliente.Send(msj);
                enviado = true;
            }
            catch (System.Net.Mail.SmtpException)
            {
                enviado = false;
            }

            return enviado;
        }



    }
}
