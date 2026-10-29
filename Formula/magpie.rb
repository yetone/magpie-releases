class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2023/magpie-cli-darwin-arm64"
      sha256 "54d739511243adde2b444e1fe0d05b10be1652d8900928bb219cd2cde7210b47"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2023/magpie-cli-darwin-amd64"
      sha256 "8f1f2804e2842b37aa4efa766cf27de2262745b85005625819fe9bff1cd7a76f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2023/magpie-cli-linux-arm64"
      sha256 "21bcb9671486a2717b5421c2fb8ec5916a9b383982ffbc0f730ca3f65f1dd3d3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2023/magpie-cli-linux-amd64"
      sha256 "a5ae6db1fef4c69749e1b733ebcbc75d4aa1a8d13a5f328545f02a156eb7a644"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
