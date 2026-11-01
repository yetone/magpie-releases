class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2649/magpie-cli-darwin-arm64"
      sha256 "d011a92cd142f8422bc6295cd5628625d115a3c071aed5298edafd85ab7a7425"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2649/magpie-cli-darwin-amd64"
      sha256 "7a0a98e96aa9e69f87be1a6b149a19da3243932b30d2cdaafec2fe044d06c6eb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2649/magpie-cli-linux-arm64"
      sha256 "4bf672aa747edef61a901a32d66acccbb45f7f8d3828918bb3547a2296a42f1c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2649/magpie-cli-linux-amd64"
      sha256 "de714750eac4ba32353e89ec7038b5cb37828756835206e399ee04a4fba3dfe9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
