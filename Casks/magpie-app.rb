cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4205"
  sha256 arm:   "49c67406a200da7cb7de8e84a065fd726d925de62c7498f2b5e92a04d029be7e",
         intel: "5d4ab9c316392049dc42a83e8397d66d726193162b570535b7bd6471694d1894"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
