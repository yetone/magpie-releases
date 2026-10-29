class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2041/magpie-cli-darwin-arm64"
      sha256 "9bf535b5d59c48d66b55adbce29063f84eceaf02ff1b00cb8e84d4c7466791f2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2041/magpie-cli-darwin-amd64"
      sha256 "8c9595e5a7c5cec1160455f3cf1a961b8232dc431569f65c4354ba9712ea4fa3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2041/magpie-cli-linux-arm64"
      sha256 "07580b076d4bd46b46cf8dddfa750e23e94b736e07261937514f9f3a22003eac"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2041/magpie-cli-linux-amd64"
      sha256 "dcc7eab760c136080bba1f75c59a484debb268005dd1f4f8b3369b60b0c1669b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
