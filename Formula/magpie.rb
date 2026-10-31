class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2444/magpie-cli-darwin-arm64"
      sha256 "c9fa818eb1b72695132c21ce50b67797b3774d031d92bc20d16d7f14ec0afe1b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2444/magpie-cli-darwin-amd64"
      sha256 "346e6d6ea488b0bbef0066932bc1aaf94880583dbe810fa7ee876f8afa28d56c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2444/magpie-cli-linux-arm64"
      sha256 "0055f82ca37dcc54371b3d13b8c85a95be066be54f4094e804a374e90f895752"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2444/magpie-cli-linux-amd64"
      sha256 "157ab29a781a214103e934c1dc1e681d9784825d87388816ae8c975970f03cb0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
