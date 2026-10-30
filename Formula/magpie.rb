class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2146/magpie-cli-darwin-arm64"
      sha256 "84763505a5000583df751b2d4fea2b512ee8741fc9e6c75e9173893b0e3d18fd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2146/magpie-cli-darwin-amd64"
      sha256 "050e2566da38431d12490d056b92d612ec6529f63d16a5a4eb51ec5db9c27c36"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2146/magpie-cli-linux-arm64"
      sha256 "df24dc1b0f59fb729183c2f4d41d8609342bd95a988ca1ccbc67b6ac907d518b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2146/magpie-cli-linux-amd64"
      sha256 "9d8a75e3ae0250655e8393f3e7dde707f454f326e09bced514bbc9858580d1be"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
