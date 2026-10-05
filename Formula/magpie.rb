class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.942/magpie-cli-darwin-arm64"
      sha256 "d2057f3741280743b7588bd08877d495ef694c20413cbd5e147ab45c9603d59c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.942/magpie-cli-darwin-amd64"
      sha256 "a95ec52e89bc90e2aef2f4a9389fd0e7a9cad75381840e6e5d1052584e6e6826"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.942/magpie-cli-linux-arm64"
      sha256 "10122181fc1f6b821ab65b6b8db95a07df35c16447f35e511fe9f543c0af129c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.942/magpie-cli-linux-amd64"
      sha256 "f3ff7ecf64bef535ac1df6fbbe8238b9d0b7580ca6c2c486b80f3e9a7bc34b9c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
