cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4629"
  sha256 arm:   "f7455d3422ce1952a1f519a77eec35eabd33e0baf7a7d2fe53151a1065e86d66",
         intel: "91b05d9bdab7397fd31727d02354dfbb087788f59c2af9ec8b4b059a7163e33a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
