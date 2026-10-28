class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1897/magpie-cli-darwin-arm64"
      sha256 "c960aa6db15753427a05203a0da06ed2268825a4b079d46e24599d4689d30fd6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1897/magpie-cli-darwin-amd64"
      sha256 "4e8d16ef2156ef5a2a6bc401dff6e11204eac2fa6751ae043697bcbedfeba809"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1897/magpie-cli-linux-arm64"
      sha256 "b147bf3aa3e528b7afed962ef9cc3378364a9d65b709c4b93d05baf56f2a35ce"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1897/magpie-cli-linux-amd64"
      sha256 "ddbaed14995cd3dde858d15473eabb593b42d67696dd674e93d8fe62d7f60ce6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
