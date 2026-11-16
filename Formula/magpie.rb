class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4308/magpie-cli-darwin-arm64"
      sha256 "79db82d2250e3171dea8e5b5544a1155d5fb831e4340e60591a906b9f06bde28"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4308/magpie-cli-darwin-amd64"
      sha256 "3e2e861a7e2831c1ae19ed30d0ed6571dc3abac9defc358a9c376d77c8e42eb4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4308/magpie-cli-linux-arm64"
      sha256 "c73ea55bfd56450754435959ad8d7281c538910642a0a11589b4bfd85bf60073"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4308/magpie-cli-linux-amd64"
      sha256 "844695bd5532566cf3eca35cf18517193f475eea2d666b89428e7316af138679"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
