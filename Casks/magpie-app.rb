cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2912"
  sha256 arm:   "b11ac4a0e7458d77fc0de2502406b6ad645506717f9f35b80cde06e5ca0354d9",
         intel: "21fe27d7b43e20ecf80f0f51ac9477743cb07cface756652d7e581432deefaaf"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
