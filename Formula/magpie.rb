class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4349/magpie-cli-darwin-arm64"
      sha256 "87d874c8046da51a95ad0ca556eff9091f7e20f4b4d052ce9025f826e0e50224"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4349/magpie-cli-darwin-amd64"
      sha256 "651a8ff6bd59c3a1a1c9eeaa7eaf841d8dddc3d2c8d266d34ebbebe7ad5f2a08"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4349/magpie-cli-linux-arm64"
      sha256 "29cc13e9d64be6ca93b096b1dc907eedd15ab0392bdaaad05d5d38fa8184bf33"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4349/magpie-cli-linux-amd64"
      sha256 "9e87b9f504a5e393d3d3e024f1e7a587a094e6f4315ddb464099e536733807dc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
