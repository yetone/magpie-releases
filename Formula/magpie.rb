class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4872/magpie-cli-darwin-arm64"
      sha256 "18d0f3cd9f1cccc60fe27925809323093f38411aab4c1e785a515789c2a46e47"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4872/magpie-cli-darwin-amd64"
      sha256 "627e0901514b75c0feb1ad1926b1517ad63a2d06cf6c4057836c84244db0adc4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4872/magpie-cli-linux-arm64"
      sha256 "fee576f497d6648d535ce43a0bb0ede0eb066c99b1e8f3e735d6b8ead25db3d0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4872/magpie-cli-linux-amd64"
      sha256 "3905e4a1c1caa6287f90b69d6f132fb547589b8fcb4d268d9dc389089e5b4bf3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
