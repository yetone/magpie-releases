cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3159"
  sha256 arm:   "486f2ca7aef395e185fac2d899c5fc2c443c209799866007c7e424cdb6976edd",
         intel: "6cfef09140db012116d70a7b5316debda2952e4ba89cc1ea44059d9b268fb69d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
