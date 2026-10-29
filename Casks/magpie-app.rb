cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1976"
  sha256 arm:   "c2fcbcb69bf27e9826272e0595a0647661b7a39358d3dcf8e0155decaedb8b62",
         intel: "2d513dc480931d13643a2b7d5827b8b9e8da8e4ad31cd701b5312e4c836c64e9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
