class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1838/magpie-cli-darwin-arm64"
      sha256 "eec0db2b86f473ff9cb986c11908ec75f6be96aa076d82fb0ebf03560fc3c918"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1838/magpie-cli-darwin-amd64"
      sha256 "e96691e074974cc043d9e321d74ba94cdf9c92774279629fd84fcc073167305b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1838/magpie-cli-linux-arm64"
      sha256 "ecbfdb4a7b592aa58bff4283e7a419646a9f3d2ed16d208c6ed7f039f662d6b0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1838/magpie-cli-linux-amd64"
      sha256 "f103a606bb1cbc3344a8af61221176faa97cce07ba95245854228b79e5a78178"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
