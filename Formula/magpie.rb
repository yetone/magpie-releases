class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4895/magpie-cli-darwin-arm64"
      sha256 "90fd1ee75abcd879d1767e0605104b02037ec16ea79eada31b9e747d954e3241"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4895/magpie-cli-darwin-amd64"
      sha256 "8a04c8fe20b70cd11aa5f1293f1680ddb67ba324dc3bb79f47564c3220bbce52"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4895/magpie-cli-linux-arm64"
      sha256 "79437bef69a37609b04b066f9c328d2239ca9f6e7b6eafb2a5154f947efa54b3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4895/magpie-cli-linux-amd64"
      sha256 "430266855387857e8cf4af4b36b5bbec3fa708379bb99bc7761054487737f7c0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
