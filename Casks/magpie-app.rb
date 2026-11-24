cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4764"
  sha256 arm:   "1a90929b24f1161eacc82d514af36de2330c88c04e3533c6aab7b41dc90cf39d",
         intel: "3bb7578ed7fa8899081a2be794a3da8aa592ff06354cc48e1964204fce96ec61"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
