cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4102"
  sha256 arm:   "1050947ed6670b65b022eb299685b0a03208dfa7b61f971c741ed6571993997e",
         intel: "c29b255d0faabe3a2a22312d8fce734d99274c4719efb21030116d9c55a7fbc2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
