cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2945"
  sha256 arm:   "517b63c286e07f90031b3053dc97f4a329ca69f12cab80d31ab84a2160a3ed82",
         intel: "0900bc268ff21790afd4f9d83ec0e04b1de853230e0d37eb79f80c68b761acf4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
