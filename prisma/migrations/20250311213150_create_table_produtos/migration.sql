-- CreateTable
CREATE TABLE "produtos" (
    "id" TEXT NOT NULL,
    "descricao" VARCHAR(200) NOT NULL,
    "valor" DECIMAL(10,2) NOT NULL,
    "estoque" INTEGER NOT NULL,
    "tipo" VARCHAR(100) NOT NULL,
    "criado_produto_em" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "disponivel" BOOLEAN DEFAULT false,

    CONSTRAINT "produtos_pkey" PRIMARY KEY ("id")
);
