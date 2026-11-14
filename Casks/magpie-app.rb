cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4129"
  sha256 arm:   "9ba6237874c3a419ecf9c90751f3223fd798bc0271ca6454f6e5e420da88058d",
         intel: "be7edde063f4394a62f7343926b3535142729af5b42a66566619d61ba34de89b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
