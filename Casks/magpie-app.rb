cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4386"
  sha256 arm:   "955307a11cb78fb0de356fcf186000a9f7a71674fedc081224f629c83b0328fe",
         intel: "09b4f199ff966c01f5108e97adfd48a90799c73275b1286f3384f140bea0bd1d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
