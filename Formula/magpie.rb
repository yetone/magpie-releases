class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3996/magpie-cli-darwin-arm64"
      sha256 "adafb51d7210622283098a4994d72be1227cb1b119311a26210eb2867ce1a37c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3996/magpie-cli-darwin-amd64"
      sha256 "79e7df0195bc7e700cf4a0e2133e6b16401b3ca0c55d601555bf32e689c06667"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3996/magpie-cli-linux-arm64"
      sha256 "16630f7d7ec06fbcaea24317625b9572133e3154d3a3e5c0e4bb646ad5fefa7d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3996/magpie-cli-linux-amd64"
      sha256 "318ecdb289dfb9b2c6c70ede48d537b5919ae496c0eb08714637f73131d14915"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
