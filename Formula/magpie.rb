class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2143/magpie-cli-darwin-arm64"
      sha256 "0395d1219a2f840336b05928e4981df97e6d8acd1d3db18e82fe9447f8fdd535"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2143/magpie-cli-darwin-amd64"
      sha256 "3286f2ac7d63dfe136bb531f942b1de1093f982afd2e63fe70440fb5adebec4f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2143/magpie-cli-linux-arm64"
      sha256 "40bfedbf584c540eabca0266157239a591f7fec82ca4420a08fc8dc813fbcad6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2143/magpie-cli-linux-amd64"
      sha256 "540f832c269e87fbd7664101910a62c23a77df0059b1bab1e55523753ecde8d4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
