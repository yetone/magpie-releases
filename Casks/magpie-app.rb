cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4881"
  sha256 arm:   "aaa56c2eee4fdc7a91b445f2ce745c3c7e2ca6bb62151cbcfba6e53bcda17c4c",
         intel: "8bf6265a2dd7601e813770cb201f772444171484a63669a008469dc8826db27c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
