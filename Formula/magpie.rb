class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2392/magpie-cli-darwin-arm64"
      sha256 "a09ae587836f97ab86c0c54c9c5176b1ef3d2d349a1b32b6297287ef6adf2d31"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2392/magpie-cli-darwin-amd64"
      sha256 "e22ae2db76388a823c649a7f99bb0a603a2671f76af05640791fb0a332ed6f7f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2392/magpie-cli-linux-arm64"
      sha256 "dd9cc122398179d23bf9abd6a69dd52277563c41e8afa259459f0918a4189943"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2392/magpie-cli-linux-amd64"
      sha256 "7bbd4e27de05fd8e852e0ce57eecbe717e5c412d24f3b23a8b2b05b2955a2189"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
