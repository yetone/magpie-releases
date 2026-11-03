class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2883/magpie-cli-darwin-arm64"
      sha256 "16de0b3103e2cf71696cb24bd394551168fdd2c5bfb5b3d7b7899c6bac99086d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2883/magpie-cli-darwin-amd64"
      sha256 "6a7e8ee157cca76fafc7b4c694c5ce2872ceb5b287c79d2ae6f88b2da9bc7e2f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2883/magpie-cli-linux-arm64"
      sha256 "1b8ed0e6cc4f9558ad83de393394dd2ac634e7378198157043e8ff5b88aa716d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2883/magpie-cli-linux-amd64"
      sha256 "b3ce841a17a0230c04e3f7c92ea50c611c8e5d68c29fcd5b30570fb86fe46e7d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
