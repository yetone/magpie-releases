class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2086/magpie-cli-darwin-arm64"
      sha256 "118883cc7fc9b1f3b164951556b95d18640b3f2cd435f73ef476c694b17c5388"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2086/magpie-cli-darwin-amd64"
      sha256 "005979efd520b21423a6a7a65e902418f349274e1694a76fca9ed21caa3276eb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2086/magpie-cli-linux-arm64"
      sha256 "b18007680cb9db84e1b31653be280a6cb7cb765020d52dbc64fce4a0521a77e4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2086/magpie-cli-linux-amd64"
      sha256 "b0514895a2b34b42c8c8eb77c338a485e7d1a9647788f6424c7bf81528695ada"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
