class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4491/magpie-cli-darwin-arm64"
      sha256 "81f27ad86dc4c697389f800314dfbc2cc613c1d78016396b7cc60873511ac871"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4491/magpie-cli-darwin-amd64"
      sha256 "0cd6db51a60bcb7c221ff1af5f37be9d9d51df6e29b0dfae314eb28d6b7b8185"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4491/magpie-cli-linux-arm64"
      sha256 "ee04cf858f6d0a3b8ead5fd006d12fb89666d266af5b79df90ea4782f7e99b7a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4491/magpie-cli-linux-amd64"
      sha256 "d23f607dd73690a658cb849f47ede77f3e67bec7357194508001182caf0ff5d2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
