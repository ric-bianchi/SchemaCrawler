/*
 *
 * SchemaCrawler
 * http://www.schemacrawler.com
 * Copyright (c) 2000-2015, Sualeh Fatehi.
 *
 * This library is free software; you can redistribute it and/or modify it under the terms
 * of the GNU Lesser General Public License as published by the Free Software Foundation;
 * either version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
 * without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 * See the GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License along with this
 * library; if not, write to the Free Software Foundation, Inc., 59 Temple Place, Suite 330,
 * Boston, MA 02111-1307, USA.
 *
 */
package schemacrawler.tools.offline;


import schemacrawler.schemacrawler.SchemaCrawlerException;
import schemacrawler.tools.databaseconnector.DatabaseConnector;
import schemacrawler.tools.databaseconnector.DatabaseSystemConnector;
import schemacrawler.tools.executable.Executable;
import schemacrawler.tools.options.DatabaseServerType;

public final class OfflineDatabaseConnector
  extends DatabaseConnector
{

  private static final class OfflineDatabaseSystemConnector
    extends DatabaseSystemConnector
  {
    private OfflineDatabaseSystemConnector(final String configResource,
                                           final String informationSchemaViewsResourceFolder)
    {
      super(OFFLINE_SERVER_TYPE, configResource,
            informationSchemaViewsResourceFolder);
    }

    @Override
    public Executable newExecutable(final String command)
      throws SchemaCrawlerException
    {
      return new OfflineSnapshotExecutable(command);
    }
  }

  private static final DatabaseServerType OFFLINE_SERVER_TYPE = new DatabaseServerType("offline",
                                                                                       "Offline",
                                                                                       "jdbc:offline:");

  public OfflineDatabaseConnector()
  {
    super(OFFLINE_SERVER_TYPE, "/help/Connections.offline.txt",
          new OfflineDatabaseSystemConnector("/schemacrawler-offline.config.properties",
                                             null));
  }

}