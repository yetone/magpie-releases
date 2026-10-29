class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2060/magpie-cli-darwin-arm64"
      sha256 "fa097be830bdf79f0943c3c96b64566a28e6e1035dca0f433e3ac759a5f1b514"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2060/magpie-cli-darwin-amd64"
      sha256 "3ebaad9a8d5dc8867028d1a484e9e6f2e225e965002fef3e788064ecdf24434c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2060/magpie-cli-linux-arm64"
      sha256 "f142dcdde95afdaf399355aca0914d80dd98e4af3f06157c745180f189875bbb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2060/magpie-cli-linux-amd64"
      sha256 "2ecd03c37e68900ee4d53547d2eb90b7c29efca6e51f15d580425394ee4613af"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
