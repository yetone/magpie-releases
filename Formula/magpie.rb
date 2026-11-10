class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3630/magpie-cli-darwin-arm64"
      sha256 "2655c7fe010ff02dddd777ee6554b9b47a715892cce70d68eebf093c0ed67863"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3630/magpie-cli-darwin-amd64"
      sha256 "f3be3d40b29db94c14a382a127f92e427cf3d36d37dcacc73a8fcd86b627de96"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3630/magpie-cli-linux-arm64"
      sha256 "2d7067b98539c4e45babcbb20d1f46242852e07a7507df7fb0dfd457e0cde50e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3630/magpie-cli-linux-amd64"
      sha256 "baa9bd74901c72a4e8540dd19d21e2ea320a933f9f6486f1103a3a6f7beba2f2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
