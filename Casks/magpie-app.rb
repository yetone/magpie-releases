cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2669"
  sha256 arm:   "b08d0e6bfa7cd6a2e6c558372f500783b4601e55ee4434e5a1de68e42342b78d",
         intel: "004c8fa73a31cdd0809267e2f0e08b9e9ec7afa79290b2a6533c98060f35eb8f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
