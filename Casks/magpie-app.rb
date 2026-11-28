cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.5035"
  sha256 arm:   "9ee7a0717137a2cf1905cd6465b1b8aca655b1451219965372f6b3ccf107d2a7",
         intel: "737f7716fa35e4d6a4f461ee1f84b0b354d202c55ab3b76378cf669a4e31c1c1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
