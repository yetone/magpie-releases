cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.906"
  sha256 arm:   "48009847a506c98c12a0c906c61ff825f7f51e42c51c785f7318a0b71b4bf88e",
         intel: "592b1d73b95a17c189c16e256c4fcece557445107afa820ad4f4f7295b960e7b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
