cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2038"
  sha256 arm:   "502c94ea57e04cead11279cfb1732d554aaff3ea28337df29d1bcb8e20308931",
         intel: "2590d4cfbfd7a587510c7c2792b839925484a10bcbd74019e0a634fce64bd42d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
