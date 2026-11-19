cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4521"
  sha256 arm:   "8a1f8c0edb926a7ee0b6a0c71149b10d03412f5578e2f02b01a3bbbd22c880c7",
         intel: "b7afa39846134acf4db51dbdf55830d48eb1be90c15c06292c1c8223a297afbd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
