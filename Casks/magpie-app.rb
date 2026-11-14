cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4201"
  sha256 arm:   "1dd80b1e47ae4a888bc065417473de17cebc010b698f337705aac97be61756ed",
         intel: "3c3cd15a5ce1c7dbd0f8b397774753e57f3d087d4f01f0bc8bcd94857480b72c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
