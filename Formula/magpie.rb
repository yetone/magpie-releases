class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3729/magpie-cli-darwin-arm64"
      sha256 "fc68127adbf718c066aaa0a6c627023da9d296e5629866007d0e72ffa6ae6406"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3729/magpie-cli-darwin-amd64"
      sha256 "4211384e66ae74a72b170387e523f7dc6fe3e76aaf21706df220a805dcfd6ba7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3729/magpie-cli-linux-arm64"
      sha256 "c14d36a5fc6a545641a866fe65e67e713f9be31c693a7ffcecb20312b4cf01fb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3729/magpie-cli-linux-amd64"
      sha256 "b549292f953155104dd089927315e01fa7c436b21f8f697928b99efa21581c5e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
