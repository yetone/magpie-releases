class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4838/magpie-cli-darwin-arm64"
      sha256 "41e72576c03aae9ae3412f7cbbdcdb2dc85fac908c61c00b4b4c1e2582e92033"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4838/magpie-cli-darwin-amd64"
      sha256 "89a26549fa1a05a2f3b0e42dab61adb906ac49509b0d3344687c0019d751669a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4838/magpie-cli-linux-arm64"
      sha256 "c8c48908544dc9711fc8e9609690de85d95b3dfa71550a0411f7e070b8a35e6d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4838/magpie-cli-linux-amd64"
      sha256 "8146e1da348af5bd182032955bc9808b0164a63e4c50f4f7f6e46ffa4f3a3ef1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
