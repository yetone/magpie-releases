class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1035/magpie-cli-darwin-arm64"
      sha256 "4e7f6e063eace7505104a68e41b27e525ba4ebfd8ec2fad147a9ba418a1d4737"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1035/magpie-cli-darwin-amd64"
      sha256 "b7a2ee8f28eb8e3b0aaad221423557ff8a662cff14cd716e9045b25123f18830"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1035/magpie-cli-linux-arm64"
      sha256 "79916c878233b14f92fd5130cbfd9028bed4c1feaf740203554fc1a7f6a0026f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1035/magpie-cli-linux-amd64"
      sha256 "f7fe1a8e3728f7200c599dba0a52070fe5a644b25f8a030ecef3830384c2a117"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
