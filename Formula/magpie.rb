class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.945/magpie-cli-darwin-arm64"
      sha256 "25fb3825989866b07b8fba4e409ec132659a2c3127b9beab81fdde2ef1af0885"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.945/magpie-cli-darwin-amd64"
      sha256 "d715b862a5d3334ff22913626cf3ded7e90458e9fd95d78efb435ed734b3e0c4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.945/magpie-cli-linux-arm64"
      sha256 "63297131e9506725a434212094b816b66104f0a3be7e7c6e4d313bf67f23f23f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.945/magpie-cli-linux-amd64"
      sha256 "7076b68505733682cdf17c3977ac0c5122635b5caea88ffac04e89e5772f212a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
