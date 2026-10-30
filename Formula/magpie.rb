class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2189/magpie-cli-darwin-arm64"
      sha256 "507788042973a7772b0d8b60b10cf52fe15ff98071a6ee9a45341aeb035f8f0a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2189/magpie-cli-darwin-amd64"
      sha256 "23ee40783f3610c2e41120e249ddda048940a5f283a2ceec02793affa1eeb268"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2189/magpie-cli-linux-arm64"
      sha256 "c40adea993f520ad00cd1b3da86786809d6c4b795bffbf0789f53ba5f82e716f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2189/magpie-cli-linux-amd64"
      sha256 "5c21206b6e241c7a6edab3de15fed8c93b176a091abc6c840084ae4dae27240e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
