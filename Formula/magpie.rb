class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2523/magpie-cli-darwin-arm64"
      sha256 "36fc69d1effba0286717bb8ee8c7efe3ff276683595768e01477f8f55bca9570"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2523/magpie-cli-darwin-amd64"
      sha256 "2dfb63f33adace133d5ad308ca22e4e823ab8dd7e3972818554e564540e6a0a2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2523/magpie-cli-linux-arm64"
      sha256 "ba518959115034f8c9b2d1e48a85205ea239b525ea2509bff3aed47b1ef5072c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2523/magpie-cli-linux-amd64"
      sha256 "7c6fd4a9dea9374d2cbfccce234c8160493ed8586cf7a570aefe4f1ccc784a75"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
